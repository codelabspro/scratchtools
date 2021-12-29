package cloud.cnctr.cnctrcloud

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class CnctrcloudApplication

fun main(args: Array<String>) {
	runApplication<CnctrcloudApplication>(*args)
}
