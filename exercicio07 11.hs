minotauro x ls = ls ++ [head[(x,y)|(x,y)<-ys, not (elem (x,y) ls)]]
					where
					ys = [ (if (prim + 1) <= n then (prim + 1) else (prim - 1) , seg), (prim, if (seg + 1) <= n then (seg +1) else (seg - 1))]
					prim = fst(last(xs))
					seg = snd(last(xs))
