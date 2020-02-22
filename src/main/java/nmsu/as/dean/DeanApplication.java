package nmsu.as.dean;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("nmsu/as/dean")
public class DeanApplication {

	public static void main(String[] args) {
		SpringApplication.run(DeanApplication.class, args);
	}

}
