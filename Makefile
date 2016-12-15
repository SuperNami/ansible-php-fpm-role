php: php-debian

php-debian: debian-repository install install-extensions configuration

php-ubuntu: ubuntu-repository install install-extensions configuration

ubuntu-repository:
	# Install ubuntu repository
	ansible-playbook main.yml -i localhost -t install_ubuntu_repository

debian-repository:
	# Install debian repository
	ansible-playbook main.yml -i localhost -t install_debian_repository

install:
	# Install php fpm
	ansible-playbook main.yml -i localhost -t install_php_fpm

install-extensions:
	# Install php fpm
	ansible-playbook main.yml -i localhost -t install_php_fpm_extensions

composer:
	# Install composer
	ansible-playbook main.yml -i localhost -t install_composer

configuration:
	# Configure
	ansible-playbook main.yml -i localhost -t php_configuration

tools:
	# Performance benchmarking tools
	ansible-playbook main.yml -i localhost -t performance_tools



opcache-gui: opcache-gui-download opcache-gui-configure

opcache-gui-download:
	# Opcache gui download
	ansible-playbook main.yml -i localhost -t opcache_gui_download

opcache-gui-configure:
	# Opcache gui configure
	ansible-playbook main.yml -i localhost -t opcache_gui_configure
