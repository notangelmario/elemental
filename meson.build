project('eu.angelmario.elemental', 'vala', 'c', version: '1.0.0')

gnome = import('gnome')

gresource = gnome.compile_resources(
	'gresource',
	'data' / 'gresource.xml',
	source_dir: 'data'
)

src = [
	'src' / 'Application.vala',
	'src' / 'widgets' / 'Window.vala',
	'src' / 'widgets' / 'Intro.vala',
]

deps = [
	dependency('gtk4'),
	dependency('glib-2.0'),
	dependency('granite-7'),
]

executable(
	meson.project_name(),
	gresource,
	src,
	dependencies: deps,
	install: true
)