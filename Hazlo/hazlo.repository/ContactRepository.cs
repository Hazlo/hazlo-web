using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Hazlo.Data;
namespace Hazlo.Repository
{
    public class ContactRepository : IContactRepository
    {
        private hazloEntities entities=new hazloEntities();

        public ContactRepository()
        {
            entities = new hazloEntities(); 
         
        }

        public IEnumerable<base_contact> GetContacts()
        {
            
            return entities.base_contact.ToList();
        }

        public base_contact GetContactByID(int id)
        {
            return entities.base_contact.Find(id);
        }

        public void InsertContact(base_contact student)
        {
            entities.base_contact.Add(student);
        }

        public void DeleteContact(int studentID)
        {
            base_contact student = entities.base_contact.Find(studentID);
            entities.base_contact.Remove(student);
        }

        public void UpdateContact(base_contact student)
        {
                   
            
        }

        public void Save()
        {
            entities.SaveChanges();
        }

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    entities.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
