

type Txs = Int
data Chain = GenesisBlock | Block Chain Txs deriving (Show)

chainLength GenesisBlock = 0
chainLength (Block chain _) = chainLength chain + 1

hasBlock x GenesisBlock = False
hasBlock x (Block chain transactions) =
  x == transactions || hasBlock x chain


-- Alternate to pattern matching
hasBlockProp :: (Txs -> Bool) -> Chain -> Bool
--hasBlockProp GenesisBlock  = False
--hasBlockProp Block c t     = prop t || hasBlockProp prop c
hasBlockProp = \ prop chain ->
  case chain of
     GenesisBlock -> False
     Block c t    -> prop t || hasBlockProp prop c


chain0 = GenesisBlock
chain1 = Block chain0 10
chain2 = Block chain1 20
chain3 = Block chain2 50
