package petstore.pet;

import com.intuit.karate.junit5.Karate;

class PetsRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("users").relativeTo(getClass());
    }    

}
