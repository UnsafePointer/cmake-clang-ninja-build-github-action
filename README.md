# cmake-clang-ninja-build

A GitHub Action to build projects using CMake, Clang and Ninja.

## Inputs

### `dir`

**Required** Directory containing top level `CMakeLists.txt`.

## Example usage

```yaml
uses: actions/cmake-clang-ninja-build@v1
with:
  dir: 'src'
```
