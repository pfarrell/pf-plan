import sys
import frontmatter
from common.models import DotplanPost


if __name__ == "__main__":
    filepath = sys.argv[1]
    kebab = sys.argv[2]
    title = sys.argv[3]

    post = DotplanPost(title=title, kebab=kebab, content=None)
    with open(filepath, "w") as file:
        file.write(frontmatter.dumps(post))
