#Import the wrapper files.
import mc_lmdb/Environment

import mc_lmdb/Value
import mc_lmdb/Transaction
import mc_lmdb/Database
import mc_lmdb/Cursor

#LMDB object.
import mc_lmdb/objects/LMDBObject
export LMDBObject.LMDB

#Include the LMDB headers and compile the relevant source files.
const currentFolder = currentSourcePath().substr(0, currentSourcePath().len - 12)
{.passC: "-I" & currentFolder & "LMDB/".}
{.compile: currentFolder & "LMDB/mdb.c".}
{.compile: currentFolder & "LMDB/midl.c".}

#Opens a database at the path, creating one if it doesn't already exist.
proc newLMDB*(path: string): LMDB =
    discard

#Gets a value from the Database.
proc get*(lmdb: LMDB, key: string): string =
    discard

#Puts a value into the Database.
proc put*(lmdb: LMDB, key: string, value: string) =
    discard

#Deletes a value from the Database.
proc delete*(lmdb: LMDB, key: string) =
    discard
