from __future__ import absolute_import, division, print_function

import ranger.container.directory
import subprocess

ACCEPT_FILE_OLD = ranger.container.directory.accept_file


def is_git_ignored(file: str):
    return (
        subprocess.run(["git", "check-ignore", file], capture_output=True).returncode
        == 0
    )


def custom_accept_file(fobj, filters):
    if not fobj.fm.settings.show_hidden and is_git_ignored(fobj.path):
        return False
    return ACCEPT_FILE_OLD(fobj, filters)


ranger.container.directory.accept_file = custom_accept_file
