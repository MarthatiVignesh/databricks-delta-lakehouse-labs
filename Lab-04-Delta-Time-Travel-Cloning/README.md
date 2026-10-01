# Lab 4 – Delta Lake Time Travel & Cloning

## Objective

This lab demonstrates Delta Lake table history, time travel, shallow cloning, deep cloning, and restoring a table to an earlier version.

## Table Used

- Database: `lab_db`
- Main table: `customers`
- Shallow clone: `customers_shallow_clone`
- Deep clone: `customers_deep_clone`

## Operations Performed

1. View Delta table history using `DESCRIBE HISTORY`.
2. Read historical table versions using `VERSION AS OF`.
3. Create a shallow clone of the `customers` table.
4. Create a deep clone of the `customers` table.
5. Verify both clone tables.
6. Restore the main `customers` table to Version 2.
7. Verify the restored table and inspect its history.

## Expected Evidence

The execution screenshots for this lab should cover:

- Delta table history
- Time-travel results
- Shallow clone result
- Deep clone result
- RESTORE result
- Final history/verification

## SQL File

See [Lab-04-Delta-Time-Travel-Cloning.sql](./Lab-04-Delta-Time-Travel-Cloning.sql).

Delta Lake supports restoring a table to an earlier version with the `RESTORE TABLE ... TO VERSION AS OF` command. citeturn0search0
