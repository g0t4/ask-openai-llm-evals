# evals would work for agent testing 
# - ask a model to do this from memory (non-agent)
# - ask model to use tool to get help and do this
# - ask model to do this w/o prompting to use tools, but allow tool present to run_command 
# - ask model to do this in the presence of a fetch/web tool to lookup online
if command -q act

    # GENERATED COMPLETIONS (finagled chatgpt to spit this out):
    #
    # function generate_completions_from_help
    #     for line in (act --help | grep -oE "\-\-[a-zA-Z0-9-]+")
    #         set option (echo $line | sed 's/--//')
    #         echo complete -c act -l $option
    #     end
    # end
    #
    # generate_completions_from_help
    #
    complete -c act -l action-cache-path -d "Defines the path where the actions get cached and host workspaces created."
    complete -c act -l action-offline-mode -d "If action contents exist, it will not be fetched or pulled again."
    complete -c act -l actor -s a -d "User that triggered the event."
    complete -c act -l artifact-server-addr -d "Defines the address to which the artifact server binds."
    complete -c act -l artifact-server-path -d "Defines the path where the artifact server stores uploads and downloads."
    complete -c act -l artifact-server-port -d "Defines the port where the artifact server listens."
    complete -c act -l bind -s b -d "Bind working directory to container, rather than copy."
    complete -c act -l bug-report -d "Display system information for bug report."
    complete -c act -l cache-server-addr -d "Defines the address to which the cache server binds."
    complete -c act -l cache-server-path -d "Defines the path where the cache server stores caches."
    complete -c act -l cache-server-port -d "Defines the port where the cache server listens."
    complete -c act -l container-architecture -d "Architecture which should be used to run containers."
    complete -c act -l container-cap-add -d "Kernel capabilities to add to the workflow containers."
    complete -c act -l container-cap-drop -d "Kernel capabilities to remove from the workflow containers."
    complete -c act -l container-daemon-socket -d "URI to Docker Engine socket."
    complete -c act -l container-options -d "Custom docker container options for the job container."
    complete -c act -l defaultbranch -d "The name of the main branch."
    complete -c act -l detect-event -d "Use first event type from workflow as the event that triggered the workflow."
    complete -c act -l directory -s C -d "Working directory."
    complete -c act -l dryrun -s n -d "Dryrun mode."
    complete -c act -l env -d "Environment variables to make available to actions."
    complete -c act -l env-file -d "Environment file to read and use as env in the containers."
    complete -c act -l eventpath -s e -d "Path to event JSON file."
    complete -c act -l github-instance -d "GitHub instance to use, not for GitHub Enterprise Server."
    complete -c act -l graph -s g -d "Draw workflows."
    complete -c act -l help -s h -d "Help for act."
    complete -c act -l input -d "Action input to make available to actions."
    complete -c act -l input-file -d "Input file to read and use as action input."
    complete -c act -l insecure-secrets -d "Does not hide secrets while printing logs."
    complete -c act -l job -s j -d "Run a specific job ID."
    complete -c act -l json -d "Output logs in json format."
    complete -c act -l list -s l -d "List workflows."
    complete -c act -l local-repository -d "Replaces the specified repository and ref with a local folder."
    complete -c act -l log-prefix-job-id -d "Output the job id within non-json logs."
    complete -c act -l matrix -d "Specify which matrix configuration to include."
    complete -c act -l network -d "Sets a docker network name."
    complete -c act -l no-cache-server -d "Disable cache server."
    complete -c act -l no-recurse -d "Disable running workflows from subdirectories."
    complete -c act -l workflows -d "Path to workflow files."
    complete -c act -l no-skip-checkout -d "Do not skip actions/checkout."
    complete -c act -l platform -s P -d "Custom image to use per platform."
    complete -c act -l privileged -d "Use privileged mode."
    complete -c act -l pull -s p -d "Pull docker image(s) even if already present."
    complete -c act -l quiet -s q -d "Disable logging of output from steps."
    complete -c act -l rebuild -d "Rebuild local action docker image(s) even if already present."
    complete -c act -l remote-name -d "Git remote name used to retrieve URL of git repo."
    complete -c act -l replace-ghe-action-token-with-github-com -d "Set personal access token for private actions on GitHub."
    complete -c act -l replace-ghe-action-with-github-com -d "Allow specified actions from GitHub on GitHub Enterprise Server."
    complete -c act -l reuse -s r -d "Don't remove container(s) on successfully completed workflows."
    complete -c act -l rm -d "Automatically remove container(s)/volume(s) after a workflow(s) failure."
    complete -c act -l secret -s s -d "Secret to make available to actions."
    complete -c act -l secret-file -d "File with list of secrets to read from."
    complete -c act -l use-gitignore -d "Controls whether paths in .gitignore should be copied into container."
    complete -c act -l use-new-action-cache -d "Enable using the new Action Cache for storing Actions locally."
    complete -c act -l userns -d "User namespace to use."
    complete -c act -l var -d "Variable to make available to actions."
    complete -c act -l var-file -d "File with list of vars to read from."
    complete -c act -l verbose -s v -d "Verbose output."
    complete -c act -l version -d "Version for act."
    complete -c act -l watch -s w -d "Watch the contents of the local repo and run when files change."
    complete -c act -l workflows -s W -d "Specify path to workflow files."

end
