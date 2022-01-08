# Dokken Changelog

# 2.6.7 (2018-03-05)

- Fix a potential race condition that may have led to the error 'Did not find config file: /opt/kitchen/client.rb'

# 2.6.6

- Improving the error message handling with intermediate builder
- README updates

# 2.6.5

- Fixing cleanup_sandbox bug. Method from test-kitchen was causing the mount to break. Replaced it with one that globs.

# 2.6.4

- Fixing pull_image method to check for new id

# 2.6.3

- tmpfs support

# 2.6.2

- Removing NotFoundError from with_retries method

# 2.6.1

- bugfix issue #118 - Ensuring sandbox cleanup on local docker hosts

# 2.6.0

- Support for testing without provisioner converging
- entrypoint config

# 2.5.1

- re-adding boot2docker detection

# 2.5.0

- Adding support for exposing ports.
- Port systax matches docker-compose

  ```
   driver:
     hostname: www.computers.biz
     ports: "1234"
  ```

  ...or something like

  ```
   driver:
     hostname: www.computers.biz
     ports:
       - '1234'
       - '4321:4321/udp'
  ```

# 2.4.3

- Using better paths for lockfiles

# 2.4.2

- Using lockfile gem around chef-client container and dokken network creation

# 2.4.1

- Adding NotFoundError to with_retries and beefing up rescues

# 2.4.0

- Features meant for 2.2.0, but tested properly this time.
- Initial support for clusters / inter-suite name resolution
- Dokken now creates a user-defined network named "dokken" and connects containers to it. This allows us to take advantage of the built in DNS server that in Docker 1.10 and later.

  ```
   driver:
     hostname: www.computers.biz
  ```

# 2.3.1

- Actually doing the things in 2.3.0

# 2.3.0

- Reverting 2.2.x bits to 2.1.x. to restore stability to users.
- That'll teach me to push gems at odd hours.

# 2.2.4

- bugfix: Only placing runner containers in user defined network

# 2.2.3

- bugfix: Adding gaurd logic for already existing dokken network

# 2.2.2

- bugfix: Creating dokken network before chef container

# 2.2.1

- Putting chef-client container in dokken network
- casting aliases to Array

# 2.2.0

- Initial support for clusters / inter-suite name resolution
- Dokken now creates a user-defined network named "dokken" and connects containers to it. This allows us to take advantage of the built in DNS server that in Docker 1.10 and later.

  driver: hostname: www.computers.biz

# 2.1.10

- Adding boot2docker detection

# 2.1.9

- Various fixes around remote docker host usage

# 2.1.8

- Using user specified image_prefix in instance_name

# 2.1.7

- bumping version. must have accidentally pushed a 2.1.6

# 2.1.6

- PR #107 - pass write_timeout to runner exec
- PR #110 - (fix issue #109) - Add retry feature

# 2.1.5

- Fixing (again) latest/current logic (thanks @tas50)

# 2.1.4

- Fixing up current/stable/latest nomenclature to match Chef release pipeline

# 2.1.3

- Merged a bunch of PRs
- # 85 - mount default boot2docker shared folder in Windows

- # 93 - fix bundler path issue, should fix issue #92

- # 97 - readme: systemd requires specific mount

## 2.1.2

- Making a CHANGELOG.md
- Updated gem spec to depend on test-kitchen ~> 1.5

## 2.1.1

- Fixed busser (serverspec, etc) test data uploading

## 2.0.0

- Uses chef/chef (instead of someara/chef)

- Bind mounts data instead of uploading through kitchen-cache container when talking to a local Docker host. (most use cases)

- Renders a Dockefile and builds dokken/kitchen-cache when taling to a remote Docker host. (DOCKER_HOST =~ /^tcp:/)

## 1.0.0

- First stable release.
- Relied on someara/chef and someara/kitchen-cache from the Docker hub.
