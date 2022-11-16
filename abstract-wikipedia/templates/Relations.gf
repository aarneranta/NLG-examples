incomplete resource Relations =
  open
    Syntax
  in {

oper
  acomp : NP -> AP -> Cl
    = mkCl ;
  amod : AP -> CN -> CN
    = mkCN ;
  det : Det -> CN -> NP
    = mkNP ;
  nummod : Card -> CN -> NP
    = mkNP ;
  subj : NP -> VP -> Cl
    = mkCl ;

-- Tensed subject, for cases where the subject may have a
-- nominal tense attached to it.
--   function p.tsubj ( source, target )

-- Relation between the first element in a list of conjunctions, and any other
-- element in the list. We assume that by default this requires agreement; if 
-- not, don't use this relation.
--  function p.conj (source, target)

}