class StringFormat(object):
  def format_string(self, pattern, *args, **kwargs):
    return pattern.format(*args, **kwargs)

# To create distributable package:
#
# python3 setup.py bdist_wheel --universal
#
# Upload the package to pypi:
#
# twine upload dist/*