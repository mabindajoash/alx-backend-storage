#!/usr/bin/env python3
"""list all documents in a collection
"""

def list_all(mongo_collection):
    """return list of documents"""
    return [doc for doc in mongo_collection.find()]
