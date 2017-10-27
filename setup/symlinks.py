"""
Helper function to create symlinks
"""
import os


def make(sources, destinations):
    for source, destination in zip(sources, destinations):

        if os.path.exists(destination):
            print(f'{destination} exists, removing...')
            os.remove(destination)

        print(f'Symlink created: {destination} -> {source}\n')
        os.symlink(source, destination)
