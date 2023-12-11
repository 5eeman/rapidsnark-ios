#ifndef PROVER_HPP
#define PROVER_HPP

/**
 * @return error code:
 *         PRPOVER_OK - in case of success.
 *         PPROVER_ERROR - in case of an error.
 */

extern int
groth16_prover(const void *zkey_buffer,   unsigned long  zkey_size,
               const void *wtns_buffer,   unsigned long  wtns_size,
               char       *proof_buffer,  unsigned long *proof_size,
               char       *public_buffer, unsigned long *public_size,
               char       *error_msg,     unsigned long  error_msg_maxsize);

#endif // PROVER_HPP
