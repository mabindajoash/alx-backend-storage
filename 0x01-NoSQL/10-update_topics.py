#!/usr/bin/env python3
"""change school topics/ update"""


def update_topics(mongo_collection, name, topics):
    """update topics based on name"""
    mongo_collection.update_many({"name": name}, {'$set': {"topics": topics}})
