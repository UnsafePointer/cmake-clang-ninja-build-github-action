# cmake-clang-ninja-build

A GitHub Action to build projects using CMake, Clang and Ninja.

## Inputs

### `dir`

**Required** Directory containing top level `CMakeLists.txt`.

## Example usage

```yaml
uses: UnsafePointer/cmake-clang-ninja-build-github-action@v1.4
with:
  dir: "src"
```
