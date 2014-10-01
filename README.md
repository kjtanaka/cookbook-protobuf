protobuf Cookbook
=================
This cookbook installs protobuf from source.

Requirements
------------

#### Platforms
- CentOS 6 and Redhat 6 are supported and tested.

#### Cookbook
- `build-essential`

Attributes
----------
#### protobuf::default
- `['protobuf']['version']`
- `['protobuf']['version']`
- `['protobuf']['download_url']`
- `['protobuf']['download_dir']`
- `['protobuf']['prefix']`
#### protobuf::modulefile
- `['protobuf']['default_version']`
- `['protobuf']['modulefile_dir']`

Usage
-----
#### protobuf::default
Add cookbook `protobuf` on `Berkshelf`:
```
cookbook 'protobuf', git: 'https://github.com/kjtanaka/cookbook-protobuf.git'
```

And then, include `protobuf` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[protobuf]"
  ]
}
```

#### protobuf::default
Add cookbook `environment-modules` on `Berkshelf` file:
```
cookbook 'environment-modules', git: 'https://github.com/kjtanaka/cookbook-environment-modules.git'
```

And then, add `recipe[environment-modules]` and `recipe[protobuf::modulefile]` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[protobuf]",
    "recipe[environment-modules]",
    "recipe[protobuf::modulefile]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
- Author:: Koji Tanaka (<kj.tanaka@gmail.com>)

```text
Copyright:: 2014 FutureGrid Project, Indiana University

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
