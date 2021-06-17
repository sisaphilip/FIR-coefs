


import chisel3._
import chisel3.util._



class sisaFIR extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(64.W))
    val out = Output(UInt(64.W))
  })

  val z1 = RegNext(io.in)
  val z2 = RegNext(z1)
  val z3 = RegNext(z2)
  val z4 = RegNext(z3)
  val z5 = RegNext(z4)
  val z6 = RegNext(z5)
  val z7 = RegNext(z6)
  val z8 = RegNext(z7)
  val z9 = RegNext(z8)

  // coefs obtained form chisel online tutorial 3.4 functional programming

  io.out := (io.in*5.U)+(z1*12.U)+(z2*30.U)+(z3*50.U)+(z4*63.U)+(z5*63.U)+(z6*50.U)+(z7*30.U)+(z8*12.U)+(z9*5.U)
}

object myVerilog extends App {

  (new chisel3.stage.ChiselStage).emitVerilog(new sisaFIR())
}
