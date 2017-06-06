module BaseTest (tests) where
import Distribution.TestSuite


tests :: IO [Test]
tests = return [ Test library ]
    where 
        library = TestInstance {
            run = return $ Finished Pass,
            name = "Library loads up", 
            tags = [],
            options = [],
            setOption = \_ _ -> Right library
        }