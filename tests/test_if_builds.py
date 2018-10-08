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

    assert os.path.exists(os.path.join(cpp_path, cpp_file)), "Cannot find file {cpp_file}exist"

    with tempfile.NamedTemporaryFile() as fout:
        output_filename = fout.name

    subprocess.check_call(['g++', '-Wall', '-std=c++14', '-g', cpp_file, '-fsyntax-only'])

    # see if execution file runs
    # subprocess.check_call([output_filename])

    # delete execution file
    if os.path.exists(output_filename):
        os.remove(output_filename)

    # delete debug symbol information
    if os.path.exists('.'.join([fout.name, 'dSYM'])):
        shutil.rmtree('.'.join([fout.name, 'dSYM']))
