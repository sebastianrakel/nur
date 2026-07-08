I'm including the steps I took to update this package to help the next
committer. Time permitting, this should probably be codified as a
formal update script:

1. Clone the upstream hashicorp/vagrant repository
2. Check out the desired version tag
3. Run `bundle lock` within the repository to generate `Gemfile.lock`
4. Run `bundix` to generate a `gemset.nix`
5. Move `gemset.nix` to overwrite this package's `gemset.nix`
6. Remove the self-referential `vagrant` attribute of the gemset
7. Clone vagrant-libvirt/vagrant-libvirt and check out the desired tag (probably latest release tag)
8. (Maybe optional?) because `bundle lock` lacks the ability to exclude groups; comment out groups unrelated to a release like `development` and `test, otherwise dependency conflicts with vagrant's `gemset.nix` are likely.
9. Run `bundle lock` within the repository to generate `Gemfile.lock`
10. Run `bundix` to generate a `gemset.nix`
11. Move `gemset.nix` to overwrite this package's `gemset_libvirt.nix`
12. Edit the `vagrant-libvirt` gem attribute to change its source to rubygems and not a relative path

Aside from these specific steps, the normal package update steps apply (update version, set hash to `lib.fakeHash`, get the updated hash to replace the old).
