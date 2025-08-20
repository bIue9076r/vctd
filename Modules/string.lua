String = {}
String.Strings = {}
String.strings = {}

-- Localization
English = 1
French = 2
-- Spanish = 3 (Pardon, my Spanish isn't that good)
-- German = 4 (Neither is my German)
-- Czech = 5 (Or my Czech)

String.strings[English] = {}
String.strings[French] = {}
--String.strings[Spanish] = {}
--String.strings[German] = {}
--String.strings[Czech] = {}

function String.set(str,ind,l)
	String.strings[l or English][ind] = str
end

function String.get(ind)
	return String.Strings[ind] or ""
end

function String.NewLocale(l)
	String.Strings = String.strings[l or English]
end
