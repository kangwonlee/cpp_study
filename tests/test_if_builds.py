import os
import shutil
import subprocess
import tempfile

import pytest

from . import get_cpp_from_ipynb as gcpp

cpp_path = os.path.abspath(os.path.join(os.path.split(__file__)[0], os.pardir))
cpp_file_list = filter(lambda filename:os.path.isfile(filename) and filename.endswith('.cpp'), os.listdir(cpp_path))

# https://docs.pytest.org/en/latest/example/parametrize.html
@pytest.mark.parametrize("cpp_file", cpp_file_list)
def test_build_and_run(cpp_file):

    assert os.path.exists(os.path.join(cpp_path, cpp_file)), "Cannot find file {cpp_file}"

    with tempfile.NamedTemporaryFile() as fout:
        output_filename = fout.name

    subprocess.check_call(
        get_build_command(cpp_file, output_filename)
    )

    if '-fsyntax-only' not in get_build_command(cpp_file, output_filename):
        # see if execution file runs
        subprocess.check_call([output_filename])

    # delete execution file
    if os.path.exists(output_filename):
        os.remove(output_filename)

    # delete debug symbol information
    if os.path.exists('.'.join([fout.name, 'dSYM'])):
        shutil.rmtree('.'.join([fout.name, 'dSYM']))


def get_build_command(cpp_file, output_filename):
    """
    Generate command building cpp_file

    With main() function, try to make the execution file
    Without ", just check the syntax
    If there is a build instruction near the end, use it instead
    """

    with open(cpp_file, 'rt') as cpp:
        txt = cpp.read()

    if gcpp.get_build_command_in_last_line(txt):
        # use the last line command
        build_command = gcpp.get_build_command_in_last_line(txt).split()
        # overwrite output filename
        if '-o' in build_command:
            i = build_command.index('-o')
            build_command[i+1] = output_filename
    elif gcpp.has_main_function(txt):
        # compile the file
        # May want to add "-Wa,-adhln={output_filename}.s" option 
        #   would work with `g++` but need to check `clang`
        build_command = ('g++', '-Wall', '-std=c++14', '-g', cpp_file, '-o', f'{output_filename}')
    else:
        # just check grammar
        build_command = ('g++', '-Wall', '-std=c++14', '-g', cpp_file, '-fsyntax-only')

    return build_command
