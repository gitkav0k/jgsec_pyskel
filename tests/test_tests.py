import pytest


def test_pytest_is_installed():
    assert type(pytest).__name__ == "module"
