#!/bin/sh

#SOURCE="${BASH_SOURCE[0]}"
SOURCE="$0"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
CODEGEN_ROOT="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

php $CODEGEN_ROOT"/dsn.generate_code.php" $1 $2 $3 $4 $5 $6 $7 $8 $9
