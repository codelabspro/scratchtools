package cloud.cnctr.cnctrcloud

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("api/welcome")
class WelcomeController {
    @GetMapping
    fun doWelcome(): String {
        return "Welcome to Cnctr endpoint"
    }
}