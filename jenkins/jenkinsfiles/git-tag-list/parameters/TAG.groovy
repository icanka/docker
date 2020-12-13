def getTags = "git ls-remote -t https://github.com/icanka/test-git.git".execute()
def tagsRaw = []
def tags = []
getTags.text.eachLine {tagsRaw.add(it)}

for(i in tagsRaw)
{
    def tagName=i.split()[1].replaceAll('\\^\\{\\}', '').replaceAll('refs/tags/', '')
    tags.add(tagName)
}
return tags