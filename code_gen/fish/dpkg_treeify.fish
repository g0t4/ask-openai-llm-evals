# eval wise, I could ask to have the implementation in sed, vs open-ended, vs asking for a tool recommendation 
#
# IIRC, below is from o1-mini, I asked to "write me a fish shell function that runs dpkg -L foo on a package and then takes the output and formats it in a tree hierarchy like the tree command"
# this works, have not yet reviewed it... wanna save that for later video.. as I also found `cargo install treeify`
#
function dpkg_tree_awk
    if not set -q argv[1]
        echo "Usage: dpkg_tree_awk <package_name>"
        return 1
    end

    set pkg $argv[1]

    dpkg -L $pkg | sort | awk '
      BEGIN {
          FS="/"
      }
      {
          # Remove empty first field if path starts with /
          start = 1
          if ($1 == "") {
              start = 2
          }
          # Print indentation
          for (i = start; i < NF; i++) {
              printf "    "
          }
          # Print the current directory or file
          print "└── " $NF
      }'
end
# TODO ask it to fix how disjoint things look at times, also to remove that first needless later of nesting, edge case
# └── .
#     └── lib.usr-is-merged
# └── etc
#     └── apparmor.d
#         └── usr.sbin.cups-browsed
#     └── cups
#         └── cups-browsed.conf
# └── lib
#     └── systemd
#         └── system
#             └── cups-browsed.service
# └── usr
#     └── lib
#         └── cups
