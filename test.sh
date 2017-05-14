#! /bin/bash

root_path="$(dirname $0)"
project_path="$1"

run_test_in(){
	pushd "$1" > /dev/null
	make > /dev/null && ./$(ls *.test)
	popd > /dev/null
}

run_test() {
	if [ -z "$project_path" ]; then
		for path in $(ls -d *_test)
		do
			run_test_in "$path"
		done
	else
		run_test_in "$project_path"
	fi
}

pushd $root_path > /dev/null
run_test
popd > /dev/null
