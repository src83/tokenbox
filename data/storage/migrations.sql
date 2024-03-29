CREATE DATABASE tokenbox;

use tokenbox;

-- ---------------------------------------------------------------------------------------------

CREATE TABLE hash_pool_v1 (
    sort UInt64,
    hash String
) ENGINE = MergeTree()
ORDER BY sort;

CREATE TABLE hash_pool_v2 (
    sort UInt64,
    hash String
) ENGINE = MergeTree()
ORDER BY sort;

CREATE TABLE hash_pool_v3 (
    sort UInt64,
    hash String
) ENGINE = MergeTree()
ORDER BY sort;

CREATE TABLE hash_pool_v4 (
    sort UInt64,
    hash String
) ENGINE = MergeTree()
ORDER BY sort;

CREATE TABLE hash_pool_v5 (
    sort UInt64,
    hash String
) ENGINE = MergeTree()
ORDER BY sort;

CREATE TABLE hash_pool_v6 (
    sort UInt64,
    hash String
) ENGINE = MergeTree()
ORDER BY sort;

-- ---------------------------------------------------------------------------------------------

CREATE TABLE resolver (
    id UUID,
    uid UInt32,
    hash String,
    target String,
    hash_length UInt8,
    target_length UInt16,
    created_at DateTime
) ENGINE = MergeTree()
ORDER BY created_at;

-- ---------------------------------------------------------------------------------------------
