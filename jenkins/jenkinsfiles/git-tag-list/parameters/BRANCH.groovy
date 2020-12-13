def getBranches = "git ls-remote --heads https://github.com/icanka/test-git.git".execute()

def branches_raw = []
def branchNames = []
getBranches.text.eachLine {branches_raw.add(it)}

for(i in branches_raw)
{
    def tagName=i.split()[1].replaceAll('refs/heads/', '')
    branchNames.add(tagName)
}
return branchNames