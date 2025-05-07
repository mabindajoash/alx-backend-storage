#!/usr/bin/env python3
"""insert a neww documenyt in a collection"""

def insert_school(mongo_collection, **kwargs):
    """insert docs in a collection, return insert id"""
    result = mongo_collection.insert_one(kwargs)
    return result.inserted_id
