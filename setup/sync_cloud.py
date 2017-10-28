"""
Create symlinks to anyhere from a syncing storage source
(like Google Drive, Dropbox or Tresorit), specify them using a yaml file
"""
import os.path
import yaml
import symlinks


with open('./cloud.yaml') as f:
    cloud = yaml.load(f)

SYNCED = os.path.expanduser(cloud['path'])

sources = [os.path.join(SYNCED, s['source']) for s in cloud['synced']]
destinations = [os.path.expanduser(s['destination']) for s in cloud['synced']]

symlinks.make(sources, destinations)
