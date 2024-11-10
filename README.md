# TypeSchema Code Generator

This action can automatically generate code based on a [TypeSchema](https://typeschema.org/) specification.

## Inputs

## `format`

**Required** The target language, possible values are: `csharp`, `go`, `java`, `php`, `python`, `ruby`, `rust`,
`typescript` or `visualbasic`.

## `namespace`

Optional a namespace for the generated code i.e. `org.typeschema.generator` for Java.

## `source`

**Required** Location of the TypeSchema source, this can be either a local file at your repository or a remote source
like an `https://` url or a TypeHub source i.e. `typehub://apioo:developer@1.0.1`

## `output`

**Required** The output directory where the generated files are placed. **NOTE the action will delete all files from
this directory before code generation to have a clean state and to remove files which are no longer needed.**

## Example usage

```yaml
uses: apioo/typeschema-generator-action@v1
with:
  format: 'java'
  namespace: 'org.typeschema.generator'
  source: './typeschema.json'
  output: './output'
```
