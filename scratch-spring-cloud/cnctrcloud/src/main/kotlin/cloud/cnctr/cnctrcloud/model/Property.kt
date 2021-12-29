package cloud.cnctr.cnctrcloud.model

data class Property (
    val id: String,
    val cnctrNumber: String,
    val addressLine1: String,
    val addressLine2: String,
    val unit: String,
    val street: String,
    val zipPin: String,
    val city: String,
    val stateProvince: String,
    val country: String
)