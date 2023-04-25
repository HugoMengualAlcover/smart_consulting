class InvoiceModel {
  int? id;
  String? nombre;
  String? cifCliente;
  DateTime? fecha;
  String? desc;
  double? precioUnitario;
  double? precioTotal;
  double? iva;
  double? precioFinal;

  get getId => this.id;

  set setId(int? id) => this.id = id;

  get getNombre => this.nombre;

  set setNombre(nombre) => this.nombre = nombre;

  get getCifCliente => this.cifCliente;

  set setCifCliente(cifCliente) => this.cifCliente = cifCliente;

  get getFecha => this.fecha;

  set setFecha(fecha) => this.fecha = fecha;

  get getDesc => this.desc;

  set setDesc(desc) => this.desc = desc;

  get getPrecioUnitario => this.precioUnitario;

  set setPrecioUnitario(precioUnitario) => this.precioUnitario = precioUnitario;

  get getPrecioTotal => this.precioTotal;

  set setPrecioTotal(precioTotal) => this.precioTotal = precioTotal;

  get getIva => this.iva;

  set setIva(iva) => this.iva = iva;

  get getPrecioFinal => this.precioFinal;

  set setPrecioFinal(precioFinal) => this.precioFinal = precioFinal;

  InvoiceModel();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombre': nombre,
      'cifCliente': cifCliente,
      'fecha': fecha?.toIso8601String(),
      'desc': desc,
      'precioUnitario': precioUnitario,
      'precioTotal': precioTotal,
      'iva': iva,
      'precioFinal': precioFinal,
    };
  }
}
