using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace WcfService1
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IService1" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        List<DataContract.dc_ObtCtes> ObtCtes(int id, string cliente);

        [OperationContract]
        bool Registro(string Opcion, string Titulo, string TituloOriginal, string Autor, string Genero, string Editorial, int AnioPublicacion);

        [OperationContract]
        List<DataContract.dc_VerInfo> VerInfo(string opcion, string titulo);
    }
}
