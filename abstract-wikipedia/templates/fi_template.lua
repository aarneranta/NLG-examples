local p = {}

-- The following is a list of templatic renderers for every constructor
-- For each constructur type (identified by its _predicate field) we have
-- a *main* template and possible sub-templates.

-- Each template can be realized as one of several variants. These variants
-- are conditioned on the validity field, which lists the arguments which must
-- be present. If none of the variants can be evaluated, the template is 
-- considered empty.

-- General structure of renderer:
--[[
p.RendererName = {
	main = { -- list of template variatns	
		{ -- variant 1
		  validity = { ... } -- list of mandatory arguments
		  template = "..."   -- the actual template
		 },
		{ -- variant 2}, - etc.
	}
	some_sub_template = { } -- list of variants
	another_sub_template = { } -- etc.
}	
]]--

p.Person = {
	main = { 
		{
		template = '{root:description}. {cross:dates}.'
		},
	},
	description = {
		{
			validity = { "person", "occupation", "origin" },
			template = '{tsubj:Person(person)} {root:L1883} {det<acomp:L2767} {amod<acomp:Demonym(origin)} {acomp:occupation}'
		},
		{
			validity = { "person", "occupation" },
			template = '{tsubj:Person(person)} {root:L1883} {det<acomp:L2767} {acomp:occupation}'
		}
	},
	dates = {
		{
			validity = {"birth", "death"},
			template = '{subj:Pronoun()} {root:Lexeme(L1883,Q442485)} {birth} ja {death}'
		},
		{
			validity = {"birth"},
			template = '{subj:Pronoun()} {root:Lexeme(L1883,Q442485)} {birth}'
		},
		{
			validity = {"death"},
			template = '{subj:Pronoun()} {death}'
		},
	}
}

p.Birth = {
	main = { 
		{
		validity = {"date", "place"},
		template = 'syntyi {Date(date)} {place}SSA'
		}, 
		{
		validity = {"place"},
		template = 'syntyi {place}+INESS'
		}, 
	}
}

p.Death = {
	main = { 
		{
		validity = {"date", "place"},
		template = 'kuoli {Date(date)} {place}SSA'
		}, 
		{
		validity = {"place"},
		template = 'kuoli {place}SSA'
		}, 
	}
}

p.Pioneer = {
	main = { 
		{
			validity = {"in_what"},
			roles = {"pobj", "obj"},
			template = '{root:"pioneering"} {obj:in_what}'
		},
		{
			validity = {"person", "in_what"},
			template = "{tsubj:Person(person)} {root:L1883} edelläkävijä {pobj:in_what}SSA."
		}
	}
		
}

p.Research = {
	main = { 
		{
			validity = {"research_field"},
			roles = {"subj", "pobj", "obj"},  -- nominal positions
			template = "{research_field}N tutkimus",
		},
		{
			validity = {"person", "pronominalize", "research_field"},
			template = "{tsubj:Pronoun(person)} {root:L115} {obj:research_field}."
		},
		{
			validity = {"person", "research_field"},
			template = "{tsubj:Person(person)} {root:L115} {obj:research_field}."
		},
		
	}
}

p.List = {
	main = {
		{
			validity = {"first", "second"},
			template = "{first} ja {second}"
		}
	}
}

p.AwardedPrize = {
	main = {
		{
			roles = {"vmod"},
			validity = {"prize"},
			template = "joka sai {prize}N {opt_with} {opt_reason}"
		},
		{
			validity = {"pronominalize", "prize", "person", "date"},
			template = "{subj:Pronoun(person)} {root:Lexeme(L1883,Q442485)} sai {obj:prize}N {Date(date)}SSA, {opt_with}, {opt_reason}."
		}
	},
	opt_with = {
		{
			validity = {"with"},
			template = "yhdessä {with}N kanssa"
		}
	},
	opt_reason = {
		{ 
			validity = {"reason"},
			template = '{root:"for"} {pobj:reason}'
		}
	}
}

p.Discovery = {
	main = {
		{
			roles = {"pobj", "obj", "subj"},
			validity = {"discovery"},
			template = "{discovery}N löytäminen"
		},
		{
			validity = {"pronominalize","person", "discovery"},
			-- L3992: to discover
			template = "{subj:Pronoun(person)} {root:Lexeme(L3992,Q442485)} {obj:discovery}."
		}
	}
}

p.Rank = {
	main = {
		{
			validity = {"rank", "pronominalize","person", "activity"},
			template = "{tsubj:Pronoun(person)} {root:L1883} {Ordinal(rank)} {opt_reference_group} {vmod:activity}."
		},
		{
			validity = {"rank", "person", "activity"},
			template = "{tsubj:Person(person)} {root:L1883} {Ordinal(rank)} {opt_reference_group} {vmod:activity}."
		}
	},
	opt_reference_group = {
		{
			validity = {"reference_group"},
			template = "{reference_group}"
		}
	}
}

return p
