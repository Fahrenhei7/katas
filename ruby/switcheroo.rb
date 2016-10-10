# 'acb' --> 'bca'
# 'aabacbaa' --> 'bbabcabb'

def switcheroo(x)
  x.tr('ab','ba')
end
