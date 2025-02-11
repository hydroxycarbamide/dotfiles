#include QMK_KEYBOARD_H

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    [0] = LAYOUT(
        KC_ESC,        KC_1,    KC_2,     KC_3,    KC_4,    KC_5,    KC_6,    KC_7,    KC_8,    KC_9,    KC_0,    KC_MINS,         KC_EQL,  KC_BSPC,
        KC_TAB,        KC_Q,    KC_W,     KC_E,    KC_R,    KC_T,    KC_Y,    KC_U,    KC_I,    KC_O,    KC_P,    KC_LBRC,         KC_RBRC, KC_BSLS,
        KC_LCTL, KC_A, KC_S,    KC_D,     KC_F,    KC_G,    KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN, KC_QUOT,                  KC_ENT,
        KC_LSFT,                KC_Z,     KC_X,    KC_C,    KC_V,    KC_B,    KC_N,    KC_M,    KC_COMM, KC_DOT,  RSFT_T(KC_SLSH), KC_UP,   LT(3, KC_DEL),
        KC_LCTL,       KC_LGUI, KC_LALT,                            KC_SPC,                     KC_RALT, MO(1),   KC_LEFT,         KC_DOWN, KC_RGHT
    ),
    [1] = LAYOUT(
        KC_GRAVE,  KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_F5,   KC_F6,   KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_F11,  KC_F12,  KC_DEL,
        _______, _______, KC_UP,   _______, _______, _______, _______, _______, _______, _______, KC_PSCR, KC_SCRL, KC_PAUS, TO(0),
        TO(2),   KC_LEFT, KC_DOWN, KC_RGHT, _______, _______, _______, _______, _______, _______, KC_HOME, KC_PGUP,          NK_TOGG,
        _______,          _______, _______, _______, _______, _______, _______, _______, _______, KC_END,  KC_PGDN, KC_VOLU, KC_MUTE,
        _______, _______, _______,                            TO(4),                     _______, KC_RCTL, KC_MPRV, KC_VOLD, KC_MNXT
    ),
    [2] = LAYOUT(
        _______, _______, _______,    _______,    _______,    _______,    _______,    _______,    _______,    _______,    _______,    _______,    _______, _______,
        _______, _______, _______,    _______,    _______,    _______,    _______,    _______,    _______,    _______,    _______,    _______,    _______, TO(0),
        TO(0),   KC_1,    KC_2,       KC_3,       KC_4,       KC_5,       KC_6,       KC_7,       KC_8,       KC_9,       KC_0,       _______,             _______,
        _______,          LSFT(KC_1), LSFT(KC_2), LSFT(KC_3), LSFT(KC_4), LSFT(KC_5), LSFT(KC_6), LSFT(KC_7), LSFT(KC_8), LSFT(KC_9), LSFT(KC_0), _______, _______,
        _______, _______, _______,                                        _______,                            _______,    _______,    _______,    _______, _______
    ),
    [3] = LAYOUT(
        KC_NUM,  KC_PSLS, KC_PAST, KC_PMNS, KC_PPLS, _______, _______, _______, _______, KC_PSLS, KC_PAST, KC_PMNS,  KC_PPLS, RGB_TOG,
        _______, KC_P7,   KC_P8,   KC_P9,   RGB_HUD, RGB_HUI, RGB_SAD, RGB_SAI, KC_P7,   KC_P8,   KC_P9,   RGB_RMOD, RGB_MOD, TO(0),
        _______, KC_P4,   KC_P5,   KC_P6,   RGB_VAD, RGB_VAI, RGB_SPD, RGB_SPI, KC_P4,   KC_P5,   KC_P6,   _______,           KC_PENT,
        _______,          KC_P1,   KC_P2,   KC_P3,   _______, _______, _______, _______, KC_P1,   KC_P2,   KC_P3,    _______, _______,
        _______, KC_P0,   KC_PDOT,                            KC_PENT,                   KC_P0,   KC_PDOT, _______,  _______, _______
    )
};
