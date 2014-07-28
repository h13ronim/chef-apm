chef-apm
============
Provides LWRP's to (un)install [atom.io](http://www.atom.io) packages via apm.

Although not really a fork, I used [balbeko's chef-npm](https://github.com/balbeko/chef-npm)'s code as basis since npm and apm are very alike.

Usage
-----

### Install
short:
```ruby
apm_package "Stylus"
```
long:
```ruby
apm_package "Stylus" do
    action :install
end
```

### Uninstall
```ruby
apm_package "Stylus" do
    action :uninstall
end
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `feature/component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:
- Djuri Baars <dsbaars@gmail.com>
- Sergey Balbeko <sergey@balbeko.com>
