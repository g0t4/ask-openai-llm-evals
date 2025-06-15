### prompt.json

- I'm switching to prompt.json, that way it's clear where prompt starts/ends... including newlines.
- Use jq to view raw prompt: 
  - `cat prompt.json | jq --join-output .prompt`
  - `--join-output` == `-r`/`--raw-output` w/o trailing newline (after each output)

### Notes

- Make sure not to add an EOL at the end of the completion/prompt, that will furbar completions
- TODO need to capture the completion/prompt.txt files automatically so I don't risk messing up either
