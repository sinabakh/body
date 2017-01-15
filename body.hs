import Data.Char
import System.Environment

-- Checks if the tongue is red.
redTongue :: String -> Bool
redTongue tongue = map toLower tongue == "red"

-- Checks if the head is green.
greenHead :: String -> Bool
greenHead head = map toLower head == "green"

-- Checks if the person should be beheaded.
behead :: Bool -> Bool -> Bool
behead rTongue gHead = rTongue == True && gHead == True

-- Takes the beheading order and thinks about the action.
think :: Bool -> IO ()
think True = print $ "Should Be Beheaded!"
think False = print $ "Should Not Be Beheaded!"

main = do
    args <- getArgs -- Gets the command line arguments
    let tongue = args !! 0 -- Gets the first argument (tongue colour).
    let head = args !! 1 -- Gets the second argument (head colour).
    think (behead (redTongue tongue) (greenHead head))