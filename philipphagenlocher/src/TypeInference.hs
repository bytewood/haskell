module TypeInference where

-- compiler chooses the most general type to keep things as polymorphic as possible
-- process
---- Assign every variable a unique typevariable
---- Assign every function its type with new unique typevariables
---- For each subexpression of the expression generate equations of types
---- Resolve the equations until no further simplifications can be done. Conflicting types imply a type error otherwise
---- the type has been inferred!
