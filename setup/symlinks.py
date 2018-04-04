"""
Helper function to create symlinks
"""
import os


def make(sources, destinations):
    for source, destination in zip(sources, destinations):

        if os.path.exists(destination):
            print('{} exists, removing...'.format(destination))
            os.remove(destination)

        print('Symlink created: {} -> {}\n'.format(destination, source))
        os.symlink(source, destination)
