package main

import (
	"bufio"
	"bytes"
	"os"
	"os/exec"
	"strings"
)

const gakefileName = "Gakefile"

func main() {
	gakefile, err := os.Open(gakefileName)
	if err != nil {
		panic(err)
	}
	defer gakefile.Close()

	scanner := bufio.NewScanner(gakefile)
	for scanner.Scan() {
		line := scanner.Text()
		commands := strings.Fields(line)
		var executor *exec.Cmd
		if len(commands) == 1 {
			executor = exec.Command(commands[0])
		} else {
			args := strings.Join(commands[1:], " ")
			executor = exec.Command(commands[0], args)
		}
		var out bytes.Buffer
		executor.Stdout = &out
		if err := executor.Run(); err != nil {
			panic(err)
		}
		print(out.String())
	}
	if err := scanner.Err(); err != nil {
		panic(err)
	}

	println("# Gake jobs has run.")
}
