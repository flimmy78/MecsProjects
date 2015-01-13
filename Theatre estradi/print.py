volumes = ["av", "bv", "cv", "dv", "ev", "fv", "gv", "hv", "iv", "jv", "kv", "lv"]
for num in range(0,101):
	print """ 		("Vol%d" cr nl)
		{
			set state %s
		}
	
		"""% (num, volumes[num // 10])
