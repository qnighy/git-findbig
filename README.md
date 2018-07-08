# git-findbig: find biggest objects in seconds

`git-findbig` is a faster way to search for biggest object occupying your git history. Useful when you have to cleanup git histories to fit your storage requirements.

## Installation

```
$ sudo make install
```

Or just copy `git-findbig.sh` to your preferred place where `$PATH` points.

## Usage

```
$ git findbig
```

## Advantages

- It's fast! It usually shows you *all* the ranking in seconds. Even in `linux`, the well-known huge repository, the search only takes 2 or 3 minutes.
- Works with bare repositories too.
- Works in submodules too. (However, it doesn't automatically search recursively.)
- Searches both for "packed" objects and "loose" objects.

