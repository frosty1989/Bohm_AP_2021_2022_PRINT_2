# To replace the files in all subdirectories, use:
# this probably has to be placed directly in the Diplomka directory


# for .tex files
foreach($i in ls -recurse -filter "*.tex") {
    $temp = Get-Content $i.fullname
    Out-File -filepath $i.fullname -inputobject $temp -encoding utf8 -force
}

# for .bib files
foreach($i in ls -recurse -filter "*.bib") {
    $temp = Get-Content $i.fullname
    Out-File -filepath $i.fullname -inputobject $temp -encoding utf8 -force
}



