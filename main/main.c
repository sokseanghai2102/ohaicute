#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "esp_log.h"

static const char *TAG = "BLINKY_LED";

#define LED GPIO_NUM_13

void app_main(void)
{
    // configue:
    gpio_config_t io_config = {0};
    io_config.mode = GPIO_MODE_INPUT_OUTPUT;
    io_config.pin_bit_mask = 1ULL << LED;
    io_config.pull_up_en = true;

    gpio_config(&io_config);

    //b sl o hai

    while (1)
    {
        bool state_led = gpio_get_level(LED);
        gpio_set_level(LED, !state_led);
        ESP_LOGI(TAG, "LED status: %s", state_led == 0 ? "ON":"OFF");
        vTaskDelay(40);

    }
}