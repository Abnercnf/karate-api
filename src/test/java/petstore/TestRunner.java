package petstore;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    
    // this will run all *.feature files that exist in sub-directories
    // see https://github.com/intuit/karate#naming-conventions

    @Karate.Test
    Karate testHighPriority() {
        return Karate.run().path("classpath:petstore/pet").relativeTo(getClass());
    }
}
