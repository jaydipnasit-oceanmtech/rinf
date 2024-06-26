use crate::common::*;
use std::future::Future;

#[cfg(not(target_family = "wasm"))]
use super::interface_os::*;
#[cfg(target_family = "wasm")]
use super::interface_web::*;

/// This contains a message from Dart.
/// Optionally, a custom binary called `binary` can also be included.
/// This type is generic, and the message
/// can be of any type declared in Protobuf.
pub struct DartSignal<T> {
    /// The message instance of a struct generated by Protobuf.
    pub message: T,
    /// Binary data included in the signal.
    /// This field is useful for sending custom bytes
    /// without the overhead of serialization/deserialization.
    pub binary: Vec<u8>,
}

/// Runs the main function in Rust.
pub fn start_rust_logic<F>(main_future: F) -> Result<()>
where
    F: Future<Output = ()> + Send + 'static,
{
    start_rust_logic_real(main_future)
}

/// Send a signal to Dart.
pub fn send_rust_signal(message_id: i32, message_bytes: Vec<u8>, binary: Vec<u8>) {
    let result = send_rust_signal_real(message_id, message_bytes, binary);
    if let Err(error) = result {
        // We cannot use `debug_print` here because
        // it uses `send_rust_siganl` internally.
        println!("Could not send Rust signal.\n{error:#?}");
    }
}
