class StringFormat(object):
  def format_string(self, pattern, *args):
    return pattern.format(*args)

# To create distributable package:
#
# python3 setup.py bdist_wheel --universal
#
# Upload the package to pypi:
#
# twine upload dist/*