using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Hazlo.Data;
namespace Hazlo.Repository
{

    public interface IContactRepository : IDisposable
    {
        IEnumerable<base_contact> GetContacts();
        base_contact GetContactByID(int contactId);
        void InsertContact(base_contact contact);
        void DeleteContact(int studentID);
        void UpdateContact(base_contact contact);
        void Save();
    }

}
